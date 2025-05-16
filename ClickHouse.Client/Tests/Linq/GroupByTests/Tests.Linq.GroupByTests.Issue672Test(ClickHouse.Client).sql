BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group1',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group1',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group2',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Enabled,
	t1.ImageFullUrl
FROM
	(
		SELECT
			sG.Name as Name
		FROM
			Stone sG
		WHERE
			sG.Enabled = true AND NOT startsWith(sG.Name, 'level - ') AND
			lengthUTF8(sG.ImageFullUrl) > 0
		GROUP BY
			sG.Name
	) sG_1
		INNER JOIN (
			SELECT
				s.Id as Id,
				s.Name as Name,
				s.Enabled as Enabled,
				s.ImageFullUrl as ImageFullUrl,
				ROW_NUMBER() OVER (PARTITION BY s.Name ORDER BY s.Name) as rn
			FROM
				Stone s
			WHERE
				s.Enabled = true AND NOT startsWith(s.Name, 'level - ') AND
				lengthUTF8(s.ImageFullUrl) > 0
		) t1 ON sG_1.Name = t1.Name AND t1.rn <= 1

