BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE AllTypesSeq

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE AllTypesSeq MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO AllTypes
(
	charDataType,
	ncharDataType
)
VALUES
(
	chr(0),
	chr(0)
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id_1 Int32
SET     @id_1 = 3

MERGE INTO AllTypes Target
USING (
	SELECT
		t.ID,
		t.charDataType,
		t.ncharDataType,
		t.nvarcharDataType
	FROM
		AllTypes t
	WHERE
		t.ID = :id_1
) Source
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	Target.charDataType = Source.charDataType,
	Target.ncharDataType = Source.ncharDataType,
	Target.nvarcharDataType = Source.nvarcharDataType

WHEN NOT MATCHED THEN
INSERT
(
	charDataType,
	ncharDataType,
	nvarcharDataType
)
VALUES
(
	Source.charDataType,
	Source.ncharDataType,
	Source.nvarcharDataType
)

