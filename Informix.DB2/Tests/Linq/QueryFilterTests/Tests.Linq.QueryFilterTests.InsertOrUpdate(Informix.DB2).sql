-- Informix.DB2 Informix

UPDATE
	Issue5289Table t1
SET
	PictureId = 3
WHERE
	t1.Id = 1

-- Informix.DB2 Informix

INSERT INTO Issue5289Table
(
	Id,
	PictureId,
	Deleted
)
VALUES
(
	1,
	2,
	'f'::BOOLEAN
)

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.PictureId,
	r.Deleted
FROM
	Issue5289Table r
WHERE
	NOT r.Deleted AND r.Id = 1

-- Informix.DB2 Informix

UPDATE
	Issue5289Table t1
SET
	PictureId = 3
WHERE
	t1.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.PictureId,
	r.Deleted
FROM
	Issue5289Table r
WHERE
	NOT r.Deleted AND r.Id = 1

