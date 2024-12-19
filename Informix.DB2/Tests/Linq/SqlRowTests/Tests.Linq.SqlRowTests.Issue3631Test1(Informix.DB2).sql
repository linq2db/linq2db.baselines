BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3631Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3631Table
(
	Country NVarChar(2) NOT NULL,
	"State" NVarChar(2) NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AL'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AZ'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'CA'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'FL'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'IN'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'OH'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'NY'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'AB'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'ON'

INSERT INTO Issue3631Table
(
	Country,
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Country,
	x."State"
FROM
	Issue3631Table x
WHERE
	ROW (x.Country, x."State") IN (ROW ('US', 'CA'), ROW ('US', 'NY'))

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3631Table

