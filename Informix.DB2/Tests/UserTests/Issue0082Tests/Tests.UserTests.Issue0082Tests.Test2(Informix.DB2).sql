-- Informix.DB2 Informix

SELECT
	o.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			o.ParentID = a_Children.ParentID
	),
	Nvl((
		SELECT
			SUM(a_Children_1.ParentID)
		FROM
			Child a_Children_1
		WHERE
			o.ParentID = a_Children_1.ParentID
	), 0)
FROM
	Parent o

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent o

-- Informix.DB2 Informix

SELECT
	x.ParentID,
	x.CountResult,
	x.SumResult
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					Child a_Children
				WHERE
					o.ParentID = a_Children.ParentID
			) as CountResult,
			o.ParentID,
			Nvl((
				SELECT
					SUM(a_Children_1.ParentID)
				FROM
					Child a_Children_1
				WHERE
					o.ParentID = a_Children_1.ParentID
			), 0) as SumResult
		FROM
			Parent o
	) x
WHERE
	x.CountResult > 0

