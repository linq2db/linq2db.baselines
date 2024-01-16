BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix


				SELECT
					tabid              as TableID,
					tabname            as TableName,
					owner = 'informix' as IsDefaultSchema,
					trim(owner)        as SchemaName,
					tabtype = 'V'      as IsView
				FROM
					systables
				WHERE
					tabid >= 100

BeforeExecute
-- Informix.DB2 Informix


						SELECT
							t.tabid,
							x.idxname,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part1)  as col1,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part2)  as col2,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part3)  as col3,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part4)  as col4,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part5)  as col5,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part6)  as col6,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part7)  as col7,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part8)  as col8,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part9)  as col9,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part10) as col10,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part11) as col11,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part12) as col12,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part13) as col13,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part14) as col14,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part15) as col15,
							(SELECT colname FROM syscolumns c WHERE c.tabid = t.tabid AND c.colno = x.part16) as col16
						FROM systables t
							JOIN sysindexes x ON t.tabid = x.tabid
						WHERE t.tabid >= 100 AND x.idxtype = 'U'

BeforeExecute
-- Informix.DB2 Informix


					SELECT
						c.tabid     as TableID,
						c.colname   as Name,
						c.colno     as Ordinal,
						c.coltype   as DataType,
						c.collength as Length
					FROM systables t
						JOIN syscolumns c ON t.tabid = c.tabid
					WHERE t.tabid >= 100

BeforeExecute
-- Informix.DB2 Informix


						SELECT
							r.constrid    as ID,
							tc.constrname as Name,
							tc.tabid      as ThisTableID,
							oc.tabid      as OtherTableID,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part1)  as ThisCol1,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part1)  as OtherCol1,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part2)  as ThisCol2,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part2)  as OtherCol2,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part3)  as ThisCol3,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part3)  as OtherCol3,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part4)  as ThisCol4,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part4)  as OtherCol4,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part5)  as ThisCol5,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part5)  as OtherCol5,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part6)  as ThisCol6,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part6)  as OtherCol6,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part7)  as ThisCol7,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part7)  as OtherCol7,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part8)  as ThisCol8,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part8)  as OtherCol8,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part9)  as ThisCol9,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part9)  as OtherCol9,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part10) as ThisCol10,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part10) as OtherCol10,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part11) as ThisCol11,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part11) as OtherCol11,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part12) as ThisCol12,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part12) as OtherCol12,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part13) as ThisCol13,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part13) as OtherCol13,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part14) as ThisCol14,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part14) as OtherCol14,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part15) as ThisCol15,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part15) as OtherCol15,
							(SELECT colname FROM syscolumns c WHERE c.tabid = tc.tabid AND c.colno = tx.part16) as ThisCol16,
							(SELECT colname FROM syscolumns c WHERE c.tabid = oc.tabid AND c.colno = ox.part16) as OtherCol16,
							tt.tabname    as ThisTableName,
							ot.tabname    as OtherTableName
						FROM
							sysreferences r
								JOIN sysconstraints tc ON r.constrid = tc.constrid
									JOIN sysindexes tx ON tc.tabid   = tx.tabid AND tc.idxname = tx.idxname
									JOIN systables  tt ON tc.tabid   = tt.tabid
								JOIN sysconstraints oc ON r.primary  = oc.constrid
									JOIN sysindexes ox ON oc.tabid   = ox.tabid AND oc.idxname = ox.idxname
									JOIN systables  ot ON oc.tabid   = ot.tabid

