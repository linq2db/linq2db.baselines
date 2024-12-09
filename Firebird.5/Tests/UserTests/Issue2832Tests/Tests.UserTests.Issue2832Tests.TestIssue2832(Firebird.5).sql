(102982) SELECT 
	t102982.Id = t102981.Id
FROM [DctSetpointtype(102981)] as t102981 (spt)
		LEFT JOIN (
			[VWellTree(102984)] as t102984 (t2)
				INNER JOIN [DctOu(102986)] as t102986 (tp2) ON ({t102984.ShopId?}? = {t102986.Id})
				LEFT JOIN [UacUsersDatagroup(102989)] as t102989 (cudg) ON ({t102986.Id} = {t102989.DatagroupId} AND {t102989.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102994)] as t102994 (oudg) ON ({t102986.ParentId?}? = {t102994.DatagroupId} AND {t102994.UserId} = 150 AND {t102994.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103014)] as t103014 (d) ON ({t102984.WellId?}? = {t103014.WellId})
		)  ON ({t103014.SetpointtypeId} = {t102981.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102989.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102994.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
