(245689) SELECT 
	t245689.Id = t245688.Id
FROM [DctSetpointtype(245688)] as t245688 (spt)
		LEFT JOIN (
			[VWellTree(245691)] as t245691 (t2)
				INNER JOIN [DctOu(245693)] as t245693 (tp2) ON ({t245691.ShopId?}? = {t245693.Id})
				LEFT JOIN [UacUsersDatagroup(245696)] as t245696 (cudg) ON ({t245693.Id} = {t245696.DatagroupId} AND {t245696.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245701)] as t245701 (oudg) ON ({t245693.ParentId?}? = {t245701.DatagroupId} AND {t245701.UserId} = 150 AND {t245701.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245721)] as t245721 (d) ON ({t245691.WellId?}? = {t245721.WellId})
		)  ON ({t245721.SetpointtypeId} = {t245688.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245696.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245701.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
