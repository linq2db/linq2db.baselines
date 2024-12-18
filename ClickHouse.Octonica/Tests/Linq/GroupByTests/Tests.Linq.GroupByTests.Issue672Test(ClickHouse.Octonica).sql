BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Stone

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Stone
(
	Id           Int32,
	Name         String,
	Enabled      Nullable(Bool),
	ImageFullUrl Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
			sG.Enabled = true AND
			NOT startsWith(sG.Name, 'level - ') AND
			CHAR_LENGTH(sG.ImageFullUrl) > 0 AND
			CHAR_LENGTH(sG.ImageFullUrl) IS NOT NULL
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
				s.Enabled = true AND
				NOT startsWith(s.Name, 'level - ') AND
				CHAR_LENGTH(s.ImageFullUrl) > 0 AND
				CHAR_LENGTH(s.ImageFullUrl) IS NOT NULL
		) t1 ON sG_1.Name = t1.Name AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Stone

