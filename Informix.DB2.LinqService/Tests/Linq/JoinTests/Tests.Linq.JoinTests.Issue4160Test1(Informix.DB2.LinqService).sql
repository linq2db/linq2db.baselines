BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4160Person

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4160Person
(
	Code NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	@Code
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	@Code
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO Issue4160Person
(
	Code
)
VALUES
(
	@Code
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4160City
(
	Code NVarChar(255)     NULL,
	Name NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO Issue4160City
(
	Code,
	Name
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DISTINCT
	t1.Value_1
FROM
	Issue4160Person pe
		LEFT JOIN (
			SELECT
				cc.Name as Value_1,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code
			FROM
				Issue4160City cc
		) t1 ON (t1.Code = pe.Code OR t1.Code IS NULL AND pe.Code IS NULL) AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4160City

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4160Person

