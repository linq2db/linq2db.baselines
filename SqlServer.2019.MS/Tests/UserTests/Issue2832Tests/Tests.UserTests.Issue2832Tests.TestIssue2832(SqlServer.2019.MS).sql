(246703) SELECT 
	t246703.Id = t246702.Id
FROM [DctSetpointtype(246702)] as t246702 (spt)
		LEFT JOIN (
			[VWellTree(246705)] as t246705 (t2)
				INNER JOIN [DctOu(246707)] as t246707 (tp2) ON ({t246705.ShopId?}? = {t246707.Id})
				LEFT JOIN [UacUsersDatagroup(246710)] as t246710 (cudg) ON ({t246707.Id} = {t246710.DatagroupId} AND {t246710.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246715)] as t246715 (oudg) ON ({t246707.ParentId?}? = {t246715.DatagroupId} AND {t246715.UserId} = 150 AND {t246715.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246735)] as t246735 (d) ON ({t246705.WellId?}? = {t246735.WellId})
		)  ON ({t246735.SetpointtypeId} = {t246702.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246710.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t246715.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
