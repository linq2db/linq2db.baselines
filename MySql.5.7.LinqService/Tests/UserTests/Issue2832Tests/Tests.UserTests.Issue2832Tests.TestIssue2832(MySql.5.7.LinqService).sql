(318441) SELECT 
	t318441.Id = t318440.Id
FROM [DctSetpointtype(318440)] as t318440 (spt)
		LEFT JOIN (
			[VWellTree(318443)] as t318443 (t2)
				INNER JOIN [DctOu(318445)] as t318445 (tp2) ON ({t318443.ShopId?}? = {t318445.Id})
				LEFT JOIN [UacUsersDatagroup(318448)] as t318448 (cudg) ON ({t318445.Id} = {t318448.DatagroupId} AND {t318448.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318453)] as t318453 (oudg) ON ({t318445.ParentId?}? = {t318453.DatagroupId} AND {t318453.UserId} = 150 AND {t318453.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318473)] as t318473 (d) ON ({t318443.WellId?}? = {t318473.WellId})
		)  ON ({t318473.SetpointtypeId} = {t318440.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318448.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318453.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
