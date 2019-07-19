package org.protectedog.service.message;

import java.util.List;
import org.protectedog.common.Search;
import org.protectedog.service.domain.Message;

public interface MessageDAO {

	// Insert
	public void addMessage(Message message) throws Exception;
	
	// Select One
	public Message getMessage(int messageNo) throws Exception;
	
	// Select List(SEND)
	public List<Message> getSendMessageList(Search search, String senderId) throws Exception;
	
	// Select List(RECEIVE)
	public List<Message> getReceiveMessageList(Search search, String receiverId) throws Exception;
	
	// Update
	public void updateMessage(Message message) throws Exception;
	
	// List Paging(SEND)
	public int getSendTotalCount(Search	search, String senderId) throws Exception;
	
	// List Paging(RECEIVE)
	public int getReceiveTotalCount(Search search, String receiverId) throws Exception;
	
}
