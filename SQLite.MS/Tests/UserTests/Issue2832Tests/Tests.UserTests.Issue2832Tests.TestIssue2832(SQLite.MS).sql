(700979) SELECT 
	t700979.Id = t700978.Id
FROM [DctSetpointtype(700978)] as t700978 (spt)
		LEFT JOIN (
			[VWellTree(700981)] as t700981 (t2)
				INNER JOIN [DctOu(700983)] as t700983 (tp2) ON ({t700981.ShopId?}? = {t700983.Id})
				LEFT JOIN [UacUsersDatagroup(700986)] as t700986 (cudg) ON ({t700983.Id} = {t700986.DatagroupId} AND {t700986.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700991)] as t700991 (oudg) ON ({t700983.ParentId?}? = {t700991.DatagroupId} AND {t700991.UserId} = 150 AND {t700991.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701011)] as t701011 (d) ON ({t700981.WellId?}? = {t701011.WellId})
		)  ON ({t701011.SetpointtypeId} = {t700978.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700986.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700991.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
