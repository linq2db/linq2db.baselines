-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Жук' IN (
			SELECT
				p."Sku" || :suffix
			FROM
				"ConcatProduct" p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Щит' IN (
			SELECT
				p."Sku" || :suffix
			FROM
				"ConcatProduct" p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

