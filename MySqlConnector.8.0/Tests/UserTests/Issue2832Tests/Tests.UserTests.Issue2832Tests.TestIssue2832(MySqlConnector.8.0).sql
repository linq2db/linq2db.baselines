(205814) SELECT 
	t205814.Id = t205813.Id
FROM [DctSetpointtype(205813)] as t205813 (spt)
		LEFT JOIN (
			[VWellTree(205816)] as t205816 (t2)
				INNER JOIN [DctOu(205818)] as t205818 (tp2) ON ({t205816.ShopId?}? = {t205818.Id})
				LEFT JOIN [UacUsersDatagroup(205821)] as t205821 (cudg) ON ({t205818.Id} = {t205821.DatagroupId} AND {t205821.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205826)] as t205826 (oudg) ON ({t205818.ParentId?}? = {t205826.DatagroupId} AND {t205826.UserId} = 150 AND {t205826.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205846)] as t205846 (d) ON ({t205816.WellId?}? = {t205846.WellId})
		)  ON ({t205846.SetpointtypeId} = {t205813.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205821.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205826.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
