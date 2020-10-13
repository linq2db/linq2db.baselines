BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @val Blob -- Object
SET     @val = HEXTORAW('010203')
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO ALLTYPES
(
	ID,
	BINARYDATATYPE,
	GUIDDATATYPE
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
SET     @n = 7
DECLARE @take Int32
SET     @take = 1

SELECT
	t2.BINARYDATATYPE,
	(
		SELECT
			Count(*)
		FROM
			ALLTYPES t1
		WHERE
			t1.ID = 1000 AND t1.GUIDDATATYPE = :val
	)
FROM
	ALLTYPES t2
WHERE
	t2.ID = :n
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @n Decimal(1, 0)
SET     @n = 7

DELETE FROM
	ALLTYPES t1
WHERE
	t1.ID = :n

