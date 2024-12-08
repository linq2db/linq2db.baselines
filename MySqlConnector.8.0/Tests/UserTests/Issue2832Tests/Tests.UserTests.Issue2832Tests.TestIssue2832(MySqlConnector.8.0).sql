(205834) SELECT 
	t205834.Id = t205833.Id
FROM [DctSetpointtype(205833)] as t205833 (spt)
		LEFT JOIN (
			[VWellTree(205836)] as t205836 (t2)
				INNER JOIN [DctOu(205838)] as t205838 (tp2) ON ({t205836.ShopId?}? = {t205838.Id})
				LEFT JOIN [UacUsersDatagroup(205841)] as t205841 (cudg) ON ({t205838.Id} = {t205841.DatagroupId} AND {t205841.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205846)] as t205846 (oudg) ON ({t205838.ParentId?}? = {t205846.DatagroupId} AND {t205846.UserId} = 150 AND {t205846.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205866)] as t205866 (d) ON ({t205836.WellId?}? = {t205866.WellId})
		)  ON ({t205866.SetpointtypeId} = {t205833.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205841.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205846.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
