(140878) SELECT 
	t140878.Id = t140877.Id
FROM [DctSetpointtype(140877)] as t140877 (spt)
		LEFT JOIN (
			[VWellTree(140880)] as t140880 (t2)
				INNER JOIN [DctOu(140882)] as t140882 (tp2) ON ({t140880.ShopId?}? = {t140882.Id})
				LEFT JOIN [UacUsersDatagroup(140885)] as t140885 (cudg) ON ({t140882.Id} = {t140885.DatagroupId} AND {t140885.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140890)] as t140890 (oudg) ON ({t140882.ParentId?}? = {t140890.DatagroupId} AND {t140890.UserId} = 150 AND {t140890.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140910)] as t140910 (d) ON ({t140880.WellId?}? = {t140910.WellId})
		)  ON ({t140910.SetpointtypeId} = {t140877.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140885.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140890.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
