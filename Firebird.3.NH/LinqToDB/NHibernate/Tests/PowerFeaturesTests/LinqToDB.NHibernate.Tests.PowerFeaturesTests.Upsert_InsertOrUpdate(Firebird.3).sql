-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- Firebird.3 Firebird3
MERGE INTO l2dbnh_orgunits t1
USING (SELECT 900 AS id FROM rdb$database) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		name = 'Updated'
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
		'First'
	)


-- Firebird.3 Firebird3
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Firebird.3 Firebird3
MERGE INTO l2dbnh_orgunits t1
USING (SELECT 900 AS id FROM rdb$database) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		name = 'Updated'
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
		'Second'
	)


-- Firebird.3 Firebird3
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


