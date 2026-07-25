-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- Oracle.Managed Oracle12
MERGE INTO l2dbnh_orgunits t1
USING (SELECT 900 AS id FROM SYS.DUAL) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		name = N'Updated'
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		900,
		NULL,
		N'First'
	)


-- Oracle.Managed Oracle12
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Oracle.Managed Oracle12
MERGE INTO l2dbnh_orgunits t1
USING (SELECT 900 AS id FROM SYS.DUAL) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		name = N'Updated'
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		900,
		NULL,
		N'Second'
	)


-- Oracle.Managed Oracle12
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


