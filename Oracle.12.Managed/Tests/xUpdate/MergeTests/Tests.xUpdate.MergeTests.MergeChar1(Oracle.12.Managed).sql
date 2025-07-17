BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	chr(0),
	chr(0)
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 3

MERGE INTO "AllTypes" Target
USING (
	SELECT
		t.ID,
		t."charDataType",
		t."ncharDataType",
		t."nvarcharDataType"
	FROM
		"AllTypes" t
	WHERE
		t.ID = :id
) "Source"
ON (Target.ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."charDataType",
	"ncharDataType" = "Source"."ncharDataType",
	"nvarcharDataType" = "Source"."nvarcharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType",
	"Source"."nvarcharDataType"
)

BeforeExecute
DisposeTransaction
