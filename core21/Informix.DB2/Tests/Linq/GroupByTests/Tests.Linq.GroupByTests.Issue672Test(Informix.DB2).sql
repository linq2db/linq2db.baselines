BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Stone
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

DROP TABLE Stone

