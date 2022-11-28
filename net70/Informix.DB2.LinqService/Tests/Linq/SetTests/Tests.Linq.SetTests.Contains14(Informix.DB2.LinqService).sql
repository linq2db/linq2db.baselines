BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = 1 AND p.ParentID = 1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = 1 AND p.ParentID = 2
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

