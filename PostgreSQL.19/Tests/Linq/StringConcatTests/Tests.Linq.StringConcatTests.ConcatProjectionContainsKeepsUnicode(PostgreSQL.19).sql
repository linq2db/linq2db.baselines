-- PostgreSQL.19 PostgreSQL12
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Жук' IN (
			SELECT
				p."Sku" || Coalesce(:suffix, '')
			FROM
				"ConcatProduct" p
		)
			THEN True
		ELSE False
	END

-- PostgreSQL.19 PostgreSQL12
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Щит' IN (
			SELECT
				p."Sku" || Coalesce(:suffix, '')
			FROM
				"ConcatProduct" p
		)
			THEN True
		ELSE False
	END

