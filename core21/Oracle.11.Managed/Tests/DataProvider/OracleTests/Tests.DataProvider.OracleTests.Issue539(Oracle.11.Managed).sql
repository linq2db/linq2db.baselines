BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @val Blob -- Object
SET     @val = HEXTORAW('010203')
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	ID,
	"binaryDataType",
	"guidDataType"
)
VALUES
(
	1000,
	:val,
	:val
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @val Blob -- Object
SET     @val = HEXTORAW('010203')
DECLARE @n Decimal(1, 0)
SET     @n = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."binaryDataType",
	(
		SELECT
			Count(*)
		FROM
			"AllTypes" t1
		WHERE
			t1.ID = 1000 AND t1."guidDataType" = :val
	)
FROM
	"AllTypes" t2
WHERE
	t2.ID = :n AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @n Decimal(1, 0)
SET     @n = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID = :n

