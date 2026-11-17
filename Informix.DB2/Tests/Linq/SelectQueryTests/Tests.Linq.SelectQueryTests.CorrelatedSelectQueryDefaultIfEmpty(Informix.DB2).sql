-- Informix.DB2 Informix
SELECT
	c_1.ChildID,
	CASE
		WHEN ((
			SELECT
				c_1.ChildID <> p.ParentID * 10 + 1
			FROM table(set{1})
		)) OR ((
			SELECT
				NOT EXISTS(
					SELECT
						p.Value1
					FROM table(set{1})
					INTERSECT
					SELECT
						c_1.ParentID
					FROM table(set{1})
				)
			FROM table(set{1})
		))
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN ((
			SELECT
				c_1.ChildID <> p.ParentID * 10 + 1
			FROM table(set{1})
		)) OR ((
			SELECT
				NOT EXISTS(
					SELECT
						p.Value1
					FROM table(set{1})
					INTERSECT
					SELECT
						c_1.ParentID
					FROM table(set{1})
				)
			FROM table(set{1})
		))
			THEN 'bad'
		ELSE NULL
	END
FROM
	Parent p
		CROSS JOIN Child c_1
WHERE
	c_1.ParentID = p.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	c_1.ChildID,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR NOT EXISTS(
			SELECT
				p.Value1
			FROM table(set{1})
			INTERSECT
			SELECT
				c_1.ParentID
			FROM table(set{1})
		)
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN c_1.ChildID <> p.ParentID * 10 + 1 OR NOT EXISTS(
			SELECT
				p.Value1
			FROM table(set{1})
			INTERSECT
			SELECT
				c_1.ParentID
			FROM table(set{1})
		)
			THEN 'bad'
		ELSE NULL
	END
FROM
	Parent p,
	Child c_1
WHERE
	c_1.ParentID = p.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	NULL::NVarChar(255)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	'bad'
FROM table(set{1})

