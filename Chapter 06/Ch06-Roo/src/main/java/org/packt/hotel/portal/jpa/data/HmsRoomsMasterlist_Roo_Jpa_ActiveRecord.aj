// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.packt.hotel.portal.jpa.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.packt.hotel.portal.jpa.data.HmsRoomsMasterlist;
import org.springframework.transaction.annotation.Transactional;

privileged aspect HmsRoomsMasterlist_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager HmsRoomsMasterlist.entityManager;
    
    public static final List<String> HmsRoomsMasterlist.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager HmsRoomsMasterlist.entityManager() {
        EntityManager em = new HmsRoomsMasterlist().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long HmsRoomsMasterlist.countHmsRoomsMasterlists() {
        return entityManager().createQuery("SELECT COUNT(o) FROM HmsRoomsMasterlist o", Long.class).getSingleResult();
    }
    
    public static List<HmsRoomsMasterlist> HmsRoomsMasterlist.findAllHmsRoomsMasterlists() {
        return entityManager().createQuery("SELECT o FROM HmsRoomsMasterlist o", HmsRoomsMasterlist.class).getResultList();
    }
    
    public static List<HmsRoomsMasterlist> HmsRoomsMasterlist.findAllHmsRoomsMasterlists(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsRoomsMasterlist o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsRoomsMasterlist.class).getResultList();
    }
    
    public static HmsRoomsMasterlist HmsRoomsMasterlist.findHmsRoomsMasterlist(Long id) {
        if (id == null) return null;
        return entityManager().find(HmsRoomsMasterlist.class, id);
    }
    
    public static List<HmsRoomsMasterlist> HmsRoomsMasterlist.findHmsRoomsMasterlistEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM HmsRoomsMasterlist o", HmsRoomsMasterlist.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<HmsRoomsMasterlist> HmsRoomsMasterlist.findHmsRoomsMasterlistEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM HmsRoomsMasterlist o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, HmsRoomsMasterlist.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void HmsRoomsMasterlist.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void HmsRoomsMasterlist.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            HmsRoomsMasterlist attached = HmsRoomsMasterlist.findHmsRoomsMasterlist(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void HmsRoomsMasterlist.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void HmsRoomsMasterlist.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public HmsRoomsMasterlist HmsRoomsMasterlist.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        HmsRoomsMasterlist merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}