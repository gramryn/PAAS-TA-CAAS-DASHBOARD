package org.paasta.caas.dashboard.common;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * Property Service 클래스
 *
 * @author REX
 * @version 1.0
 * @since 2018.08.07
 */
@Service
@Data
public class PropertyService {

    @Value("${caasApi.url}")
    private String caasApiUrl;

    @Value("${commonApi.url}")
    private String commonApiUrl;
}
