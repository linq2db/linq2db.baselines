(239830) SELECT 
	t239830.Id = t239829.Id
FROM [DctSetpointtype(239829)] as t239829 (spt)
		LEFT JOIN (
			[VWellTree(239832)] as t239832 (t2)
				INNER JOIN [DctOu(239834)] as t239834 (tp2) ON ({t239832.ShopId?}? = {t239834.Id})
				LEFT JOIN [UacUsersDatagroup(239837)] as t239837 (cudg) ON ({t239834.Id} = {t239837.DatagroupId} AND {t239837.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239842)] as t239842 (oudg) ON ({t239834.ParentId?}? = {t239842.DatagroupId} AND {t239842.UserId} = 150 AND {t239842.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239862)] as t239862 (d) ON ({t239832.WellId?}? = {t239862.WellId})
		)  ON ({t239862.SetpointtypeId} = {t239829.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239837.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239842.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
