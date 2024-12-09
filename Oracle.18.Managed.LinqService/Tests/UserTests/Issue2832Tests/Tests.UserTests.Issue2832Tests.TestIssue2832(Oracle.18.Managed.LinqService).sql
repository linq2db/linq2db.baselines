(140896) SELECT 
	t140896.Id = t140895.Id
FROM [DctSetpointtype(140895)] as t140895 (spt)
		LEFT JOIN (
			[VWellTree(140898)] as t140898 (t2)
				INNER JOIN [DctOu(140900)] as t140900 (tp2) ON ({t140898.ShopId?}? = {t140900.Id})
				LEFT JOIN [UacUsersDatagroup(140903)] as t140903 (cudg) ON ({t140900.Id} = {t140903.DatagroupId} AND {t140903.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140908)] as t140908 (oudg) ON ({t140900.ParentId?}? = {t140908.DatagroupId} AND {t140908.UserId} = 150 AND {t140908.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140928)] as t140928 (d) ON ({t140898.WellId?}? = {t140928.WellId})
		)  ON ({t140928.SetpointtypeId} = {t140895.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140903.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140908.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
