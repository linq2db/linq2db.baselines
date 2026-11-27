-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 7) IS NULL OR 'r'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 7), Coalesce('r'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 5) IS NULL OR 'n'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 5), Coalesce('n'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 7) IS NULL OR 'o'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 7), Coalesce('o'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 8) IS NULL OR 'o'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 8), Coalesce('o'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 7) IS NULL OR 'r'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 7), Coalesce('r'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 7) IS NULL OR 'o'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 7), Coalesce('o'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

-- YDB Ydb
SELECT
	IF(Unicode::Substring(p.LastName, 0, 8) IS NULL OR 'o'u IS NULL OR 3 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, 8), Coalesce('o'u, ''u), 3 - 1) AS Int32) + 1, 0)) - 1 as c1
FROM
	Person p
WHERE
	p.PersonID = 2

