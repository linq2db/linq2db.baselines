(194962) SELECT 
	t194962.Id = t194961.Id
FROM [DctSetpointtype(194961)] as t194961 (spt)
		LEFT JOIN (
			[VWellTree(194964)] as t194964 (t2)
				INNER JOIN [DctOu(194966)] as t194966 (tp2) ON ({t194964.ShopId?}? = {t194966.Id})
				LEFT JOIN [UacUsersDatagroup(194969)] as t194969 (cudg) ON ({t194966.Id} = {t194969.DatagroupId} AND {t194969.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194974)] as t194974 (oudg) ON ({t194966.ParentId?}? = {t194974.DatagroupId} AND {t194974.UserId} = 150 AND {t194974.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194994)] as t194994 (d) ON ({t194964.WellId?}? = {t194994.WellId})
		)  ON ({t194994.SetpointtypeId} = {t194961.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194969.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194974.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
