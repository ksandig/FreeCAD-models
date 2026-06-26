import FreeCAD as App

def add_dimension_properties():
    doc = App.ActiveDocument
    if not doc:
        App.Console.PrintError("No active document!\n")
        return

    for obj in doc.Objects:
        if obj.TypeId == "PartDesign::Body":
            mappings = {
                "length": "XLength",
                "width": "YLength",
                "height": "ZLength"
            }
            
            for prop_name, attr_name in mappings.items():
                if not hasattr(obj, prop_name):
                    obj.addProperty("App::PropertyLength", prop_name, "Dimensions", "Automatische Bemaßung")
                expression = f".Shape.BoundBox.{attr_name}"               
                obj.setExpression(prop_name, expression)
				
    doc.recompute()

add_dimension_properties()