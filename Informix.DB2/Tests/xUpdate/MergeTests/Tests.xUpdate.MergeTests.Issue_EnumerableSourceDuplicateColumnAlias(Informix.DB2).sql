-- Informix.DB2 Informix

MERGE INTO MyChildClass Target
USING (
	SELECT 1::Int AS Id, 10::Int AS Value_1 FROM table(set{1})
	UNION ALL
	SELECT 2::Int, 20::Int FROM table(set{1})
	UNION ALL
	SELECT 3::Int, 30::Int FROM table(set{1})
	UNION ALL
	SELECT 4::Int, 40::Int FROM table(set{1})) Source
(
	Id,
	Value_1
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	Source.Id,
	Source.Value_1
)

