#ifndef ${HEADER_FILENAME_UPPER}_H
#define ${HEADER_FILENAME_UPPER}_H

class ${CLASS_NAME} {
public:
    ${CLASS_NAME}();
    ~${CLASS_NAME}();

    void doSomething();
    int getValue() const;
    void setValue(int value);

private:
    int memberVariable;
};

#endif // ${HEADER_FILENAME_UPPER}_H