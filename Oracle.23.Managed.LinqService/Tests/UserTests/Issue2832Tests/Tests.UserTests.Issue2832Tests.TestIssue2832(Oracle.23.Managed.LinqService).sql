(140850) SELECT 
	t140850.Id = t140849.Id
FROM [DctSetpointtype(140849)] as t140849 (spt)
		LEFT JOIN (
			[VWellTree(140852)] as t140852 (t2)
				INNER JOIN [DctOu(140854)] as t140854 (tp2) ON ({t140852.ShopId?}? = {t140854.Id})
				LEFT JOIN [UacUsersDatagroup(140857)] as t140857 (cudg) ON ({t140854.Id} = {t140857.DatagroupId} AND {t140857.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140862)] as t140862 (oudg) ON ({t140854.ParentId?}? = {t140862.DatagroupId} AND {t140862.UserId} = 150 AND {t140862.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140882)] as t140882 (d) ON ({t140852.WellId?}? = {t140882.WellId})
		)  ON ({t140882.SetpointtypeId} = {t140849.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140857.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140862.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
