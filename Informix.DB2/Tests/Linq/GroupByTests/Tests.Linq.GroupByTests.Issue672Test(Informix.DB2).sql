﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Stone

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Stone
(
	Id           SERIAL         NOT NULL,
	Name         NVarChar(255)  NOT NULL,
	Enabled      BOOLEAN            NULL,
	ImageFullUrl NVarChar(255)      NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char(1) -- StringFixedLength
SET     @Enabled = 't'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Char(1) -- StringFixedLength
SET     @Enabled = 't'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Char(1) -- StringFixedLength
SET     @Enabled = 't'
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	s.Name
FROM
	Stone s
WHERE
	s.Enabled = 't' AND NOT s.Name LIKE 'level - %' ESCAPE '~' AND
	CHAR_LENGTH(s.ImageFullUrl) > 0
GROUP BY
	s.Name

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'

SELECT
	s.Id,
	s.Name,
	s.Enabled,
	s.ImageFullUrl
FROM
	Stone s
WHERE
	s.Enabled = 't' AND
	NOT s.Name LIKE 'level - %' ESCAPE '~' AND
	CHAR_LENGTH(s.ImageFullUrl) > 0 AND
	s.Name = @Name

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'

SELECT
	s.Id,
	s.Name,
	s.Enabled,
	s.ImageFullUrl
FROM
	Stone s
WHERE
	s.Enabled = 't' AND
	NOT s.Name LIKE 'level - %' ESCAPE '~' AND
	CHAR_LENGTH(s.ImageFullUrl) > 0 AND
	s.Name = @Name

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Stone

