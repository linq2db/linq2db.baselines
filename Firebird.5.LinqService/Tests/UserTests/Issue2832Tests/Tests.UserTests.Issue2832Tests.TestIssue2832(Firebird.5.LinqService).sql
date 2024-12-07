(102189) SELECT 
	t102189.Id = t102188.Id
FROM [DctSetpointtype(102188)] as t102188 (spt)
		LEFT JOIN (
			[VWellTree(102191)] as t102191 (t2)
				INNER JOIN [DctOu(102193)] as t102193 (tp2) ON ({t102191.ShopId?}? = {t102193.Id})
				LEFT JOIN [UacUsersDatagroup(102196)] as t102196 (cudg) ON ({t102193.Id} = {t102196.DatagroupId} AND {t102196.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102201)] as t102201 (oudg) ON ({t102193.ParentId?}? = {t102201.DatagroupId} AND {t102201.UserId} = 150 AND {t102201.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102221)] as t102221 (d) ON ({t102191.WellId?}? = {t102221.WellId})
		)  ON ({t102221.SetpointtypeId} = {t102188.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102196.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102201.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
