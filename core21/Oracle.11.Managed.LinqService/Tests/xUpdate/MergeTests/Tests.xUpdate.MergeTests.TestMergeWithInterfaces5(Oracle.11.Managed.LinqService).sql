BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ReviewIndexes
(
	Id    Int          NOT NULL,
	Value VarChar(255)     NULL,

	CONSTRAINT PK_ReviewIndexes PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

MERGE INTO ReviewIndexes Target
USING ( 
	SELECT 
		t1.Id, 
		t1.Value as Value_1
	FROM
		ReviewIndexes t1
) Source
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Target.Value = Source.Value_1

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Value
)
VALUES
(
	Source.Id,
	Source.Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ReviewIndexes

