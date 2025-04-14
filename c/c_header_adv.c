/******************************************************************************
 * Filename:    ${HEADER_FILENAME}.h
 * Author:      ${AUTHOR}
 * Date:        ${DATE}
 * Version:     1.0
 * Description: This header file declares functions, structures, and constants
 * for the ${MODULE_NAME} module.
 *
 * License:     [Your License Here, e.g., MIT License, GPL]
 *
 * Defines:
 * - ${MODULE_NAME_UPPER}_H: Prevents multiple inclusions.
 * - [Add module-specific macro definitions here]
 *
 * Structures:
 * - [If any, describe the structures declared in this header]
 *
 * Function Prototypes:
 * - [List and briefly describe the function prototypes]
 *
 * Notes:
 * - [Add any important notes or conventions for this header file]
 *
 *****************************************************************************/

#ifndef ${MODULE_NAME_UPPER}_H
#define ${MODULE_NAME_UPPER}_H

// Standard Library Includes (only if absolutely necessary and used in declarations)
// #include <stddef.h>  // For size_t, etc.
// #include <stdint.h>  // For uint32_t, etc.

// Other Header Includes (if this header depends on them)
// #include "other_module.h"

// Macro Definitions
#define ${MODULE_NAME_UPPER}_VERSION 100 // Major * 100 + Minor
// #define CONSTANT_EXAMPLE 42

// Type Definitions (typedefs for structures or other types)
// typedef struct {
//     int member1;
//     char member2[32];
// } ${MODULE_NAME}_data_t;

// Structure Declarations (if you need to use pointers to incomplete types)
// struct ${MODULE_NAME}_opaque_data;
// typedef struct ${MODULE_NAME}_opaque_data ${MODULE_NAME}_handle_t;

// Function Prototypes
/**
 * @brief Initializes the ${MODULE_NAME} module.
 *
 * @return 0 on success, non-zero on failure.
 */
int ${MODULE_NAME}_init(void);

/**
 * @brief Performs a specific operation in the ${MODULE_NAME} module.
 *
 * @param input An input value.
 * @return The result of the operation.
 */
int ${MODULE_NAME}_process(int input);

/**
 * @brief Cleans up resources used by the ${MODULE_NAME} module.
 *
 * @return void.
 */
void ${MODULE_NAME}_cleanup(void);

// External Variable Declarations (if any)
// extern int global_variable;

#endif // ${MODULE_NAME_UPPER}_H