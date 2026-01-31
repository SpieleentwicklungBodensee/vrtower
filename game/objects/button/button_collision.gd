extends XRToolsInteractableBody

@export var button_path: NodePath
@onready var button_node := get_node(button_path)

func _ready() -> void:
	pointer_event.connect(_on_pointer_event)

func _on_pointer_event(event) -> void:
	# Je nach Version heißt das Feld evtl. event_type oder type.
	# Debug erstmal:
	# print(event)
	if "event_type" in event and event.event_type == XRToolsPointerEvent.Type.PRESSED:
		button_node.press()
