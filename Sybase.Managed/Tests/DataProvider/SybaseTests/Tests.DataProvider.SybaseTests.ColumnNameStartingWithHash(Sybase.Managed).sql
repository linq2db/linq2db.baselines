-- Sybase.Managed Sybase
sp_configure 'allow updates', 1

-- Sybase.Managed Sybase
UPDATE syscolumns SET name = '#ProbeColumn' where name = 'ProbeColumn'

-- Sybase.Managed Sybase
DECLARE @ProbeColumn Integer -- Int32
SET     @ProbeColumn = 123

INSERT INTO [HashColumnTable]
(
	#ProbeColumn
)
VALUES
(
	@ProbeColumn
)

-- Sybase.Managed Sybase
SELECT
	[t1].#ProbeColumn
FROM
	[HashColumnTable] [t1]

-- Sybase.Managed Sybase
sp_configure 'allow updates', 0

