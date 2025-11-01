-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @val Raw(3) -- Binary
SET     @val = HEXTORAW('010203')
DECLARE @n Decimal(1, 0)
SET     @n = 3

SELECT
	t1."binaryDataType",
	(
		SELECT
			COUNT(*)
		FROM
			"AllTypes" t2
		WHERE
			t2.ID = 1000 AND t2."guidDataType" = :val
	) as COUNT_1
FROM
	"AllTypes" t1
WHERE
	t1.ID = :n
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @n Decimal(1, 0)
SET     @n = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID = :n

