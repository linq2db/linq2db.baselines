-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	Coalesce((
		SELECT
			arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((a_Children.Id, toString(Coalesce(a_Children.Value, '')))))), '')
		FROM
			ConcatChild a_Children
		WHERE
			p.Id = a_Children.ParentId
	), '')
FROM
	ConcatParent p
ORDER BY
	p.Id

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.Value
FROM
	ConcatParent m_1
		INNER JOIN ConcatChild d ON m_1.Id = d.ParentId

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	ConcatParent t1

