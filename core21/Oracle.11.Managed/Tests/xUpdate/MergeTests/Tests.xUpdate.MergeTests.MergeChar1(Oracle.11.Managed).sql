BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id_1 Int32
SET     @id_1 = 365

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

