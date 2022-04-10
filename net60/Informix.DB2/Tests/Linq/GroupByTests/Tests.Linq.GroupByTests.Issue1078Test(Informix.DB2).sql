BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1078Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1078Table
(
	UserID Int     NOT NULL,
	SiteID Int     NOT NULL,
	Active BOOLEAN NOT NULL,

	PRIMARY KEY (UserID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 't'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 'f'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 't'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 'f'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 't'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 'f'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 'f'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 3
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 'f'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 4
DECLARE @Active Char(1) -- StringFixedLength
SET     @Active = 't'

INSERT INTO Issue1078Table
(
	UserID,
	SiteID,
	Active
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.SiteID,
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			Issue1078Table u
		WHERE
			CASE
				WHEN u.Active = 't' THEN 1
				ELSE 0
			END = 0 AND
			t1.SiteID = u.SiteID
	)
FROM
	Issue1078Table t1
GROUP BY
	t1.SiteID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1078Table

