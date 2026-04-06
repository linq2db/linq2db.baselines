-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'group1'
DECLARE $Enabled  -- Boolean
SET     $Enabled = True
DECLARE $ImageFullUrl NVarChar(3) -- String
SET     $ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	CAST($Name AS VARCHAR),
	CAST($Enabled AS BOOLEAN),
	CAST($ImageFullUrl AS VARCHAR)
)

-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'group1'
DECLARE $Enabled  -- Boolean
SET     $Enabled = True
DECLARE $ImageFullUrl NVarChar(3) -- String
SET     $ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	CAST($Name AS VARCHAR),
	CAST($Enabled AS BOOLEAN),
	CAST($ImageFullUrl AS VARCHAR)
)

-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'group2'
DECLARE $Enabled  -- Boolean
SET     $Enabled = True
DECLARE $ImageFullUrl NVarChar(3) -- String
SET     $ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	CAST($Name AS VARCHAR),
	CAST($Enabled AS BOOLEAN),
	CAST($ImageFullUrl AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1.Name,
	t1.Enabled,
	t1.ImageFullUrl
FROM
	(
		SELECT DISTINCT
			sG.Name as Key_1
		FROM
			Stone sG
		WHERE
			sG.Enabled = True AND sG.Name NOT LIKE 'level - %' ESCAPE '~' AND
			Length(sG.ImageFullUrl) > 0
	) sG_1
		INNER JOIN LATERAL (
			SELECT
				s.Id,
				s.Name,
				s.Enabled,
				s.ImageFullUrl
			FROM
				Stone s
			WHERE
				s.Enabled = True AND
				s.Name NOT LIKE 'level - %' ESCAPE '~' AND
				Length(s.ImageFullUrl) > 0 AND
				sG_1.Key_1 = s.Name
			LIMIT 1
		) t1 ON 1=1

