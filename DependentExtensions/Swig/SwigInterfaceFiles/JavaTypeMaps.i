%{
class ByteArray {
private:
	unsigned int size;
	unsigned char *data;
	
public:
	unsigned char getByteAt(unsigned int pos) {
		return data[pos];
	}
	
	void setByteAt(unsigned int pos, unsigned char byte) {
		data[pos] = byte;
	}
	
	unsigned int getSize() {
		return size;
	}
	
public:
	explicit ByteArray(unsigned int size, unsigned char *data) {
		this->size = size;
		this->data = data;
	}
};
%}

%extend SLNet::Packet {
ByteArray* dataArray() {
	return new ByteArray($self->length, $self->data);
}
};

%extend SLNet::SystemAddress {
sockaddr_in *GetAddr4() {
	return &$self->address.addr4;
}
};

class ByteArray {
private:
	unsigned int size;
	unsigned char *data;
	
public:
	unsigned char getByteAt(unsigned int pos);
	void setByteAt(unsigned int pos, unsigned char byte);
	
	unsigned int getSize();

public:
	explicit ByteArray(unsigned int size, unsigned char *data) {
		this->size = size;
		this->data = data;
	}

};



