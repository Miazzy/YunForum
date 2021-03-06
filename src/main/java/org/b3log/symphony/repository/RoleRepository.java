package org.b3log.symphony.repository;

import org.b3log.latke.repository.AbstractRepository;
import org.b3log.latke.repository.annotation.Repository;
import org.b3log.symphony.model.Role;

/**
 * Role repository.
 *
 * @author <a href="http://88250.b3log.org">Liang Ding</a>
 * @version 1.0.0.0, Dec 3, 2016
 * @since 1.8.0
 */
@Repository
public class RoleRepository extends AbstractRepository {

    /**
     * Public constructor.
     */
    public RoleRepository() {
        super(Role.ROLE);
    }
}
