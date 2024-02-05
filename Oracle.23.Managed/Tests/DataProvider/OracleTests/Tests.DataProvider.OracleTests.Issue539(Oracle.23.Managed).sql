BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @val Blob -- Object
SET     @val = HEXTORAW('010203')
DECLARE @val_1 Raw(3) -- Binary
SET     @val_1 = HEXTORAW('010203')
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
	:val_1
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @val Raw(3) -- Binary
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
	) as "Count"
FROM
	"AllTypes" t2
WHERE
	t2.ID = :n
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @n Decimal(1, 0)
SET     @n = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID = :n

