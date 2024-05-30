﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 3

MERGE INTO "AllTypes" Target
USING (
	SELECT
		t.ID as "source_ID",
		t."charDataType" as "source_charDataType",
		t."ncharDataType" as "source_ncharDataType",
		t."nvarcharDataType" as "source_nvarcharDataType"
	FROM
		"AllTypes" t
	WHERE
		t.ID = :id
) "Source"
ON (Target.ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."source_charDataType",
	"ncharDataType" = "Source"."source_ncharDataType",
	"nvarcharDataType" = "Source"."source_nvarcharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."source_charDataType",
	"Source"."source_ncharDataType",
	"Source"."source_nvarcharDataType"
)

BeforeExecute
DisposeTransaction
