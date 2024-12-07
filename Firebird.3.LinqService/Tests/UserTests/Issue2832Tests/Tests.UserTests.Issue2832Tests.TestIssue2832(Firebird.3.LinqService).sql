(158694) SELECT 
	t158694.Id = t158693.Id
FROM [DctSetpointtype(158693)] as t158693 (spt)
		LEFT JOIN (
			[VWellTree(158696)] as t158696 (t2)
				INNER JOIN [DctOu(158698)] as t158698 (tp2) ON ({t158696.ShopId?}? = {t158698.Id})
				LEFT JOIN [UacUsersDatagroup(158701)] as t158701 (cudg) ON ({t158698.Id} = {t158701.DatagroupId} AND {t158701.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(158706)] as t158706 (oudg) ON ({t158698.ParentId?}? = {t158706.DatagroupId} AND {t158706.UserId} = 150 AND {t158706.Inheritablepermission} > 0)
				INNER JOIN [Deviation(158726)] as t158726 (d) ON ({t158696.WellId?}? = {t158726.WellId})
		)  ON ({t158726.SetpointtypeId} = {t158693.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t158701.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t158706.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
