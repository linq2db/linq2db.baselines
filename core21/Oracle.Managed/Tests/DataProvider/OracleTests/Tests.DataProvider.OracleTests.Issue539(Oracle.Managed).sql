BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
	t2.ID = :n
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @n Decimal(1, 0)
SET     @n = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID = :n

