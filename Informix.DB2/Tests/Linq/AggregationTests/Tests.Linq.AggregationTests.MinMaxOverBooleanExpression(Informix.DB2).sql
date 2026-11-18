-- Informix.DB2 Informix
SELECT
	MAX(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- Informix.DB2 Informix
SELECT
	MIN(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- Informix.DB2 Informix
SELECT
	MAX(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- Informix.DB2 Informix
SELECT
	MIN(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- Informix.DB2 Informix
SELECT
	MAX(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN 't'::BOOLEAN
			WHEN t1.Id > 1 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- Informix.DB2 Informix
SELECT
	MIN(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN 't'::BOOLEAN
			WHEN t1.Id > 1 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

