(250689) SELECT 
	t250689.Id = t250688.Id
FROM [DctSetpointtype(250688)] as t250688 (spt)
		LEFT JOIN (
			[VWellTree(250691)] as t250691 (t2)
				INNER JOIN [DctOu(250693)] as t250693 (tp2) ON ({t250691.ShopId?}? = {t250693.Id})
				LEFT JOIN [UacUsersDatagroup(250696)] as t250696 (cudg) ON ({t250693.Id} = {t250696.DatagroupId} AND {t250696.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(250701)] as t250701 (oudg) ON ({t250693.ParentId?}? = {t250701.DatagroupId} AND {t250701.UserId} = 150 AND {t250701.Inheritablepermission} > 0)
				INNER JOIN [Deviation(250721)] as t250721 (d) ON ({t250691.WellId?}? = {t250721.WellId})
		)  ON ({t250721.SetpointtypeId} = {t250688.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t250696.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t250701.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
