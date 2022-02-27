BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE ReviewIndexes
(
	Id    Int          NOT NULL,
	Value VarChar(255)     NULL,

	CONSTRAINT PK_ReviewIndexes PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO ReviewIndexes Target
USING (	SELECT 1 Id, '2' Value_1 FROM sys.dual) Source
ON (Target.Id = Source.Id)

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
 WHERE Source.Id > 1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE ReviewIndexes

