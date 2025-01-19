BeforeExecute
-- Sybase.Managed Sybase

sp_configure 'allow updates', 1

BeforeExecute
-- Sybase.Managed Sybase

UPDATE syscolumns SET name = '#Column1064' where name = 'Column1064'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column1064 Integer -- Int32
SET     @Column1064 = 123

INSERT INTO [TableTest1064]
(
	#Column1064
)
VALUES
(
	@Column1064
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].#Column1064
FROM
	[TableTest1064] [t1]

BeforeExecute
-- Sybase.Managed Sybase

sp_configure 'allow updates', 0

