-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND @ParentID::Int = p.ParentID
	)
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND @ParentID::Int = p.ParentID
	)
FROM table(set{1})

