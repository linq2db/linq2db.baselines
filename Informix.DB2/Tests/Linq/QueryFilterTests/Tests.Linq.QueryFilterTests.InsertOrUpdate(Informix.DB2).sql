-- Informix.DB2 Informix
UPDATE
	SoftDeletedPictureTable t1
SET
	PictureId = 3
WHERE
	t1.Id = 1

-- Informix.DB2 Informix
INSERT INTO SoftDeletedPictureTable
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
	SoftDeletedPictureTable r
WHERE
	NOT r.Deleted AND r.Id = 1

-- Informix.DB2 Informix
UPDATE
	SoftDeletedPictureTable t1
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
	SoftDeletedPictureTable r
WHERE
	NOT r.Deleted AND r.Id = 1

