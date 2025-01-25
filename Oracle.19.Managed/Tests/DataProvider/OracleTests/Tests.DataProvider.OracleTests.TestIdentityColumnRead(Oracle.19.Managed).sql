BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT USER FROM DUAL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT  VERSION from PRODUCT_COMPONENT_VERSION WHERE ROWNUM = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

select user from dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CurrentUser Varchar2(6) -- String
SET     @CurrentUser = 'SYSTEM'


					SELECT
						:CurrentUser || '.' || d.NAME as TableID,
						:CurrentUser                  as SchemaName,
						d.NAME                        as TableName,
						d.IsView                      as IsView,
						1                             as IsDefaultSchema,
						d.COMMENTS                    as Description
					FROM
					(
						SELECT NAME, ISVIEW, CASE c.MatView WHEN 1 THEN mvc.COMMENTS ELSE tc.COMMENTS END AS COMMENTS
						FROM
						(
							SELECT t.TABLE_NAME NAME, 0 as IsView, 0 as MatView FROM USER_TABLES t
								LEFT JOIN USER_MVIEWS tm ON t.TABLE_NAME = tm.CONTAINER_NAME
								WHERE tm.MVIEW_NAME IS NULL
							UNION ALL
							SELECT v.VIEW_NAME NAME, 1 as IsView, 0 as MatView FROM USER_VIEWS v
							UNION ALL
							SELECT m.MVIEW_NAME NAME, 1 as IsView, 1 as MatView FROM USER_MVIEWS m
						) c
							LEFT JOIN USER_TAB_COMMENTS tc ON c.NAME = tc.TABLE_NAME
							LEFT JOIN USER_MVIEW_COMMENTS mvc ON c.NAME = mvc.MVIEW_NAME
					) d
					ORDER BY TableID, isView
					

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12


					SELECT
						FKCOLS.OWNER || '.' || FKCOLS.TABLE_NAME as TableID,
						FKCOLS.CONSTRAINT_NAME                   as PrimaryKeyName,
						FKCOLS.COLUMN_NAME                       as ColumnName,
						FKCOLS.POSITION                          as Ordinal
					FROM
						ALL_CONS_COLUMNS FKCOLS,
						ALL_CONSTRAINTS FKCON
					WHERE
						FKCOLS.OWNER           = FKCON.OWNER AND
						FKCOLS.TABLE_NAME      = FKCON.TABLE_NAME AND
						FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME AND
						FKCON.CONSTRAINT_TYPE  = 'P' AND
						FKCOLS.OWNER IN ('SYSTEM')

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12


					SELECT
						(SELECT USER FROM DUAL) || '.' || c.TABLE_NAME as TableID,
						c.COLUMN_NAME                                  as Name,
						c.DATA_TYPE                                    as DataType,
						CASE c.NULLABLE WHEN 'Y' THEN 1 ELSE 0 END     as IsNullable,
						c.COLUMN_ID                                    as Ordinal,
						c.DATA_LENGTH                                  as Length,
						c.CHAR_LENGTH                                  as CharLength,
						c.DATA_PRECISION                               as Precision,
						c.DATA_SCALE                                   as Scale,
						CASE c.IDENTITY_COLUMN WHEN 'YES' THEN 1 ELSE 0 END as IsIdentity,
						cc.COMMENTS                                    as Description
					FROM USER_TAB_COLUMNS c
						JOIN USER_COL_COMMENTS cc ON
							c.TABLE_NAME  = cc.TABLE_NAME AND
							c.COLUMN_NAME = cc.COLUMN_NAME
					

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12


						SELECT
							FKCON.CONSTRAINT_NAME                    as Name,
							FKCON.OWNER || '.' || FKCON.TABLE_NAME   as ThisTableID,
							FKCOLS.COLUMN_NAME                       as ThisColumn,
							PKCOLS.OWNER || '.' || PKCOLS.TABLE_NAME as OtherTableID,
							PKCOLS.COLUMN_NAME                       as OtherColumn,
							FKCOLS.POSITION                          as Ordinal
						FROM
							USER_CONSTRAINTS FKCON
								JOIN USER_CONS_COLUMNS FKCOLS ON
									FKCOLS.CONSTRAINT_NAME = FKCON.CONSTRAINT_NAME
								JOIN USER_CONS_COLUMNS PKCOLS ON
									PKCOLS.CONSTRAINT_NAME = FKCON.R_CONSTRAINT_NAME
						WHERE
							FKCON.CONSTRAINT_TYPE = 'R' AND
							FKCOLS.POSITION       = PKCOLS.POSITION
						ORDER BY Ordinal, Name
						

