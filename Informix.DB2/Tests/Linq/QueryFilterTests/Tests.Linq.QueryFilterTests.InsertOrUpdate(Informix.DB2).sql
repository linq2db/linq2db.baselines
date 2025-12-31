-- Informix.DB2 Informix

UPDATE
	Issue5289Table r
SET
	PictureId = 3
WHERE
	(r.Deleted = 'f'::BOOLEAN OR r.Deleted IS NULL) AND
	r.Id = 1

-- Informix.DB2 Informix

INSERT INTO Issue5289Table
(
	Id,
	PictureId
)
VALUES
(
	1,
	2
)

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.PictureId
FROM
	Issue5289Table r
WHERE
	(r.Deleted = 'f'::BOOLEAN OR r.Deleted IS NULL) AND
	r.Id = 1

-- Informix.DB2 Informix

UPDATE
	Issue5289Table r
SET
	PictureId = 3
WHERE
	(r.Deleted = 'f'::BOOLEAN OR r.Deleted IS NULL) AND
	r.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r.PictureId
FROM
	Issue5289Table r
WHERE
	(r.Deleted = 'f'::BOOLEAN OR r.Deleted IS NULL) AND
	r.Id = 1

